export interface FirebaseInAppMessagingPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
