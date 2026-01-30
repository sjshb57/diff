.class public Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;
.super Ljava/lang/Object;
.source "ConfigSharedPrefsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RealtimeBackoffMetadata"
.end annotation


# instance fields
.field private backoffEndTime:Ljava/util/Date;

.field private numFailedStreams:I


# direct methods
.method public constructor <init>(ILjava/util/Date;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;->numFailedStreams:I

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;->backoffEndTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method getBackoffEndTime()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;->backoffEndTime:Ljava/util/Date;

    return-object v0
.end method

.method getNumFailedStreams()I
    .registers 2

    iget v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigSharedPrefsClient$RealtimeBackoffMetadata;->numFailedStreams:I

    return v0
.end method
