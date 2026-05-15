import type { TurboModule } from 'react-native';
import { TurboModuleRegistry } from 'react-native';

export interface Spec extends TurboModule {
  dismissExtension(error?: string | null): void;
  openApp(): void;
  continueInApp(extraData?: Object | null): void;
  data(): Promise<Object>;
}

export default TurboModuleRegistry.get<Spec>('ShareMenuReactView');
