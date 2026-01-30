.class public Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;
.super Ljava/lang/Object;
.source "ConfigSharedPrefsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$BackoffMetadata;,
        Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;
    }
.end annotation


# static fields
.field private static final BACKOFF_END_TIME_IN_MILLIS_KEY:Ljava/lang/String; = "backoff_end_time_in_millis"

.field private static final CUSTOM_SIGNALS_MAX_COUNT:I = 0x64

.field private static final CUSTOM_SIGNALS_MAX_KEY_LENGTH:I = 0xfa

.field private static final CUSTOM_SIGNALS_MAX_STRING_VALUE_LENGTH:I = 0x1f4

.field private static final FETCH_TIMEOUT_IN_SECONDS_KEY:Ljava/lang/String; = "fetch_timeout_in_seconds"

.field private static final LAST_FETCH_ETAG_KEY:Ljava/lang/String; = "last_fetch_etag"

.field private static final LAST_FETCH_STATUS_KEY:Ljava/lang/String; = "last_fetch_status"

.field public static final LAST_FETCH_TIME_IN_MILLIS_NO_FETCH_YET:J = -0x1L

.field static final LAST_FETCH_TIME_NO_FETCH_YET:Ljava/util/Date;

.field private static final LAST_SUCCESSFUL_FETCH_TIME_IN_MILLIS_KEY:Ljava/lang/String; = "last_fetch_time_in_millis"

.field private static final LAST_TEMPLATE_VERSION:Ljava/lang/String; = "last_template_version"

.field private static final MINIMUM_FETCH_INTERVAL_IN_SECONDS_KEY:Ljava/lang/String; = "minimum_fetch_interval_in_seconds"

.field static final NO_BACKOFF_TIME:Ljava/util/Date;

.field private static final NO_BACKOFF_TIME_IN_MILLIS:J = -0x1L

.field static final NO_FAILED_FETCHES:I = 0x0

.field static final NO_FAILED_REALTIME_STREAMS:I = 0x0

.field private static final NUM_FAILED_FETCHES_KEY:Ljava/lang/String; = "num_failed_fetches"

.field private static final NUM_FAILED_REALTIME_STREAMS_KEY:Ljava/lang/String; = "num_failed_realtime_streams"

.field private static final REALTIME_BACKOFF_END_TIME_IN_MILLIS_KEY:Ljava/lang/String; = "realtime_backoff_end_time_in_millis"


# instance fields
.field private final backoffMetadataLock:Ljava/lang/Object;

.field private final customSignalsLock:Ljava/lang/Object;

.field private final frcInfoLock:Ljava/lang/Object;

.field private final frcSharedPrefs:Landroid/content/SharedPreferences;

.field private final realtimeBackoffMetadataLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->LAST_FETCH_TIME_NO_FETCH_YET:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->NO_BACKOFF_TIME:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->backoffMetadataLock:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->realtimeBackoffMetadataLock:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->customSignalsLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getBackoffMetadata()Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$BackoffMetadata;
    .registers 9

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->backoffMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$BackoffMetadata;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "num_failed_fetches"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "backoff_end_time_in_millis"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$BackoffMetadata;-><init>(ILjava/util/Date;)V

    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getCustomSignals()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "customSignals"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_2b} :catch_2d

    goto :goto_18

    :cond_2c
    return-object v0

    :catch_2d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getFetchTimeoutInSeconds()J
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fetch_timeout_in_seconds"

    const-wide/16 v2, 0x3c

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;
    .registers 10

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "last_fetch_time_in_millis"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v4, "last_fetch_status"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    iget-object v5, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v6, "fetch_timeout_in_seconds"

    const-wide/16 v7, 0x3c

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setFetchTimeoutInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v6, "minimum_fetch_interval_in_seconds"

    sget-wide v7, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS:J

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v4

    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl;->newBuilder()Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl$Builder;->withLastFetchStatus(I)Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl$Builder;->withLastSuccessfulFetchTimeInMillis(J)Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl$Builder;->withConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl$Builder;->build()Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigInfoImpl;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method getLastFetchETag()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_fetch_etag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastFetchStatus()I
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_fetch_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getLastSuccessfulFetchTime()Ljava/util/Date;
    .registers 6

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "last_fetch_time_in_millis"

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method getLastTemplateVersion()J
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last_template_version"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumFetchIntervalInSeconds()J
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "minimum_fetch_interval_in_seconds"

    sget-wide v2, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHandler;->DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRealtimeBackoffMetadata()Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;
    .registers 9

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->realtimeBackoffMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "num_failed_realtime_streams"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "realtime_backoff_end_time_in_millis"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;-><init>(ILjava/util/Date;)V

    monitor-exit v0

    return-object v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method resetBackoff()V
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->NO_BACKOFF_TIME:Ljava/util/Date;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->setBackoffMetadata(ILjava/util/Date;)V

    return-void
.end method

.method resetRealtimeBackoff()V
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->NO_BACKOFF_TIME:Ljava/util/Date;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->setRealtimeBackoffMetadata(ILjava/util/Date;)V

    return-void
.end method

.method setBackoffMetadata(ILjava/util/Date;)V
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->backoffMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "num_failed_fetches"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "backoff_end_time_in_millis"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fetch_timeout_in_seconds"

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->getFetchTimeoutInSeconds()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "minimum_fetch_interval_in_seconds"

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->getMinimumFetchIntervalInSeconds()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public setConfigSettingsWithoutWaitingOnDiskWrite(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fetch_timeout_in_seconds"

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->getFetchTimeoutInSeconds()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "minimum_fetch_interval_in_seconds"

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->getMinimumFetchIntervalInSeconds()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public setCustomSignals(Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->customSignalsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->getCustomSignals()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x1f4

    const/16 v9, 0xfa

    if-gt v7, v9, :cond_54

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_3d

    goto :goto_54

    :cond_3d
    if-eqz v4, :cond_4a

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    goto :goto_11

    :cond_4a
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_51

    goto :goto_52

    :cond_51
    move v5, v2

    :goto_52
    or-int/2addr v3, v5

    goto :goto_11

    :cond_54
    :goto_54
    const-string p1, "FirebaseRemoteConfig"

    const-string v1, "Invalid custom signal: Custom signal keys must be %d characters or less, and values must be %d characters or less."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_70
    if-nez v3, :cond_74

    monitor-exit v0

    return-void

    :cond_74
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 v3, 0x64

    if-le p1, v3, :cond_91

    const-string p1, "FirebaseRemoteConfig"

    const-string v1, "Invalid custom signal: Too many custom signals provided. The maximum allowed is %d."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_91
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "customSignals"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string p1, "FirebaseRemoteConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keys of updated custom signals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->getCustomSignals()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_c9
    move-exception p1

    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_3 .. :try_end_cb} :catchall_c9

    throw p1
.end method

.method setLastFetchETag(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_etag"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method setLastTemplateVersion(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_template_version"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method setRealtimeBackoffMetadata(ILjava/util/Date;)V
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->realtimeBackoffMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "num_failed_realtime_streams"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "realtime_backoff_end_time_in_millis"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method updateLastFetchAsFailed()V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_status"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method updateLastFetchAsSuccessfulAt(Ljava/util/Date;)V
    .registers 7

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_status"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_time_in_millis"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method updateLastFetchAsThrottled()V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;->frcSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_status"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method
