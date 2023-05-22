// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$firebaseAuthHash() => r'c8e57c3e164ad1c2cad48c4508e47f6097e350a7';

/// See also [firebaseAuth].
@ProviderFor(firebaseAuth)
final firebaseAuthProvider = Provider<FirebaseAuth>.internal(
  firebaseAuth,
  name: r'firebaseAuthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$firebaseAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseAuthRef = ProviderRef<FirebaseAuth>;
String _$firebaseFirestoreHash() => r'bcd0de65a93e6108353c348ea0c88ca8795a64ae';

/// See also [firebaseFirestore].
@ProviderFor(firebaseFirestore)
final firebaseFirestoreProvider =
    AutoDisposeProvider<FirebaseFirestore>.internal(
  firebaseFirestore,
  name: r'firebaseFirestoreProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseFirestoreHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseFirestoreRef = AutoDisposeProviderRef<FirebaseFirestore>;
String _$firebaseFunctionsHash() => r'ccdfca3251ad00b68ef63dabb46e507155aa6286';

/// See also [firebaseFunctions].
@ProviderFor(firebaseFunctions)
final firebaseFunctionsProvider =
    AutoDisposeProvider<FirebaseFunctions>.internal(
  firebaseFunctions,
  name: r'firebaseFunctionsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseFunctionsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseFunctionsRef = AutoDisposeProviderRef<FirebaseFunctions>;
String _$firebaseStorageHash() => r'ee51676c16a06f67a861c29f61a5fd9cbaab8f82';

/// See also [firebaseStorage].
@ProviderFor(firebaseStorage)
final firebaseStorageProvider = AutoDisposeProvider<FirebaseStorage>.internal(
  firebaseStorage,
  name: r'firebaseStorageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseStorageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseStorageRef = AutoDisposeProviderRef<FirebaseStorage>;
String _$remoteConfigHash() => r'241de621f8fe9b84be47fa874ce18201991dccbe';

/// See also [remoteConfig].
@ProviderFor(remoteConfig)
final remoteConfigProvider = AutoDisposeProvider<FirebaseRemoteConfig>.internal(
  remoteConfig,
  name: r'remoteConfigProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$remoteConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemoteConfigRef = AutoDisposeProviderRef<FirebaseRemoteConfig>;
String _$firebaseMessagingHash() => r'6c8ae43ae3e7867b3c696f330d594fdce47b6fd3';

/// See also [firebaseMessaging].
@ProviderFor(firebaseMessaging)
final firebaseMessagingProvider =
    AutoDisposeProvider<FirebaseMessaging>.internal(
  firebaseMessaging,
  name: r'firebaseMessagingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseMessagingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseMessagingRef = AutoDisposeProviderRef<FirebaseMessaging>;
String _$firebaseAnalyticsHash() => r'8c6d8a28c036bcaf976ae82ec4fc34ebaed14bce';

/// See also [firebaseAnalytics].
@ProviderFor(firebaseAnalytics)
final firebaseAnalyticsProvider =
    AutoDisposeProvider<FirebaseAnalytics>.internal(
  firebaseAnalytics,
  name: r'firebaseAnalyticsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseAnalyticsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseAnalyticsRef = AutoDisposeProviderRef<FirebaseAnalytics>;
String _$firebaseCrashlyticsHash() =>
    r'c7904c2db8ff06dde49923f9c402eb266e3ab5e6';

/// See also [firebaseCrashlytics].
@ProviderFor(firebaseCrashlytics)
final firebaseCrashlyticsProvider =
    AutoDisposeProvider<FirebaseCrashlytics>.internal(
  firebaseCrashlytics,
  name: r'firebaseCrashlyticsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseCrashlyticsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseCrashlyticsRef = AutoDisposeProviderRef<FirebaseCrashlytics>;
String _$sharedPreferencesHash() => r'0924fb848ccdeb837f448bcb2b685bf4104dbd40';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider =
    AutoDisposeProvider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPreferencesRef = AutoDisposeProviderRef<SharedPreferences>;
String _$customPreferencesHash() => r'd6c8c95155a7b2c66f4f8ef6da35191d58cecf52';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef CustomPreferencesRef = AutoDisposeProviderRef<Preferences>;

/// See also [customPreferences].
@ProviderFor(customPreferences)
const customPreferencesProvider = CustomPreferencesFamily();

/// See also [customPreferences].
class CustomPreferencesFamily extends Family<Preferences> {
  /// See also [customPreferences].
  const CustomPreferencesFamily();

  /// See also [customPreferences].
  CustomPreferencesProvider call(
    String? prefix,
  ) {
    return CustomPreferencesProvider(
      prefix,
    );
  }

  @override
  CustomPreferencesProvider getProviderOverride(
    covariant CustomPreferencesProvider provider,
  ) {
    return call(
      provider.prefix,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'customPreferencesProvider';
}

/// See also [customPreferences].
class CustomPreferencesProvider extends AutoDisposeProvider<Preferences> {
  /// See also [customPreferences].
  CustomPreferencesProvider(
    this.prefix,
  ) : super.internal(
          (ref) => customPreferences(
            ref,
            prefix,
          ),
          from: customPreferencesProvider,
          name: r'customPreferencesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$customPreferencesHash,
          dependencies: CustomPreferencesFamily._dependencies,
          allTransitiveDependencies:
              CustomPreferencesFamily._allTransitiveDependencies,
        );

  final String? prefix;

  @override
  bool operator ==(Object other) {
    return other is CustomPreferencesProvider && other.prefix == prefix;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, prefix.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$loggerHash() => r'77a28f729b907ea628b882dad366a72e86b309a7';

/// See also [logger].
@ProviderFor(logger)
final loggerProvider = AutoDisposeProvider<Logger>.internal(
  logger,
  name: r'loggerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loggerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LoggerRef = AutoDisposeProviderRef<Logger>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
