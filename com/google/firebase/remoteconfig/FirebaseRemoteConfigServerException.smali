.class public Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;
.super Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;
.source "FirebaseRemoteConfigServerException.java"


# instance fields
.field private final httpStatusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;-><init>(Ljava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    iput p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    iput p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;-><init>(Ljava/lang/String;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->httpStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigException$Code;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->httpStatusCode:I

    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigServerException;->httpStatusCode:I

    return v0
.end method
