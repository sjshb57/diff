.class public Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigValueImpl.java"

# interfaces
.implements Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigValue;


# static fields
.field private static final ILLEGAL_ARGUMENT_STRING_FORMAT:Ljava/lang/String; = "[Value: %s] cannot be converted to a %s."


# instance fields
.field private final source:I

.field private final value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->value:Ljava/lang/String;

    iput p2, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->source:I

    return-void
.end method

.method private asTrimmedString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private throwIfNullValue()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->value:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null, and cannot be converted to the desired type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBoolean()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->source:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->asTrimmedString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->TRUE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    return v3

    :cond_18
    sget-object v2, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->FALSE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_25

    return v1

    :cond_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    const-string v0, "boolean"

    aput-object v0, v4, v3

    const-string v0, "[Value: %s] cannot be converted to a %s."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public asByteArray()[B
    .registers 3

    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->source:I

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->DEFAULT_VALUE_FOR_BYTE_ARRAY:[B

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->value:Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/remoteconfig/internal/ConfigGetParameterHandler;->FRC_BYTE_ARRAY_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public asDouble()D
    .registers 6

    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->source:I

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->asTrimmedString()Ljava/lang/String;

    move-result-object v0

    :try_start_b
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_13} :catch_14

    return-wide v0

    :catch_14
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "double"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "[Value: %s] cannot be converted to a %s."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public asLong()J
    .registers 6

    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->source:I

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->asTrimmedString()Ljava/lang/String;

    move-result-object v0

    :try_start_b
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_13} :catch_14

    return-wide v0

    :catch_14
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "long"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "[Value: %s] cannot be converted to a %s."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public asString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->source:I

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    :cond_7
    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->throwIfNullValue()V

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/FirebaseRemoteConfigValueImpl;->source:I

    return v0
.end method
