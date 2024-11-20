import { TurboModule } from '@rnoh/react-native-openharmony/ts';
import { TM } from '@rnoh/react-native-openharmony/generated/ts';
import Want from '@ohos.app.ability.Want';

export class OpenContactFormModule extends TurboModule implements TM.RTNOpenContactForm.Spec {
  openContactForm(contact: TM.RTNOpenContactForm.Contact): Promise<void> {
    let want: Want = {
      bundleName: 'com.ohos.contacts',
      abilityName: 'com.ohos.contacts.MainAbility',
      parameters: {
        'phoneNumber': contact.phoneNumbers?.[0] ? contact.phoneNumbers[0].number: "",
        'contactName': contact.displayName || "",
        'pageFlag':'page_flag_save_contact'
      }
    };
    return this.ctx.uiAbilityContext.startAbility(want);
  }
}