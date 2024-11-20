import type { TurboModule } from 'react-native/Libraries/TurboModule/RCTExport';
import { TurboModuleRegistry } from 'react-native';


export interface Contact {
  phoneNumbers?: {
    number: string;
    label: string;
  }[];
  displayName?: string;
}

export interface Spec extends TurboModule {
  openContactForm(contact:Contact): Promise<void>;
}

export default TurboModuleRegistry.get<Spec>(
  'RTNOpenContactForm',
) as Spec | null;
