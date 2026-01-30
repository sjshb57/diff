.class public Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;
.super Ljava/lang/Object;
.source "ConfigGetParameterHandler.java"


# static fields
.field static final FALSE_REGEX:Ljava/util/regex/Pattern;

.field public static final FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

.field static final TRUE_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private final activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

.field private final defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/util/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigContainer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    const-string v0, "^(1|true|t|yes|y|on)$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->TRUE_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|no|n|off|)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->FALSE_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->listeners:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    return-void
.end method

.method private callListeners(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->listeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/util/BiConsumer;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_c

    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private static getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;
    .registers 1

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->getBlocking()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object p0

    return-object p0
.end method

.method private static getDoubleFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/Double;
    .registers 3

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getConfigs()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    return-object v0
.end method

.method private static getKeySetFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object p0

    if-nez p0, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getConfigs()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_24
    return-object v0
.end method

.method private static getKeysByPrefix(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Ljava/util/TreeSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigContainer;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getConfigs()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object v0
.end method

.method private static getLongFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getConfigs()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    return-object v0
.end method

.method private static getStringFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigContainer;->getConfigs()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    return-object v0
.end method

.method static synthetic lambda$callListeners$0(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "No value of type \'%s\' exists for parameter key \'%s\'."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirebaseRemoteConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/gms/common/util/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/util/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigContainer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->listeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->listeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public getAll()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getKeySetFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getKeySetFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :cond_34
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getStringFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    sget-object v3, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->TRUE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->callListeners(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    return v1

    :cond_20
    sget-object v3, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->FALSE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->callListeners(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    return v2

    :cond_36
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getStringFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    sget-object v3, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->TRUE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_4b

    return v1

    :cond_4b
    sget-object v1, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->FALSE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_58

    return v2

    :cond_58
    const-string v0, "Boolean"

    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getStringFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->callListeners(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    sget-object p1, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :cond_18
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getStringFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    sget-object p1, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :cond_27
    const-string v0, "ByteArray"

    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getDoubleFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->callListeners(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_16
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getDoubleFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_23
    const-string v0, "Double"

    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getKeysByPrefix(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-static {p1, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getKeysByPrefix(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_18
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-static {p1, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getKeysByPrefix(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_27
    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getLongFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->callListeners(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_16
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getLongFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_23
    const-string v0, "Long"

    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getStringFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->callListeners(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getStringFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    return-object v0

    :cond_1b
    const-string v0, "String"

    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public getValue(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getStringFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->activatedConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getConfigsFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;)Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->callListeners(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    new-instance p1, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_18
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->defaultConfigsCache:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->getStringFromCache(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance p1, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_27
    const-string v0, "FirebaseRemoteConfigValue"

    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->logParameterValueDoesNotExist(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method
