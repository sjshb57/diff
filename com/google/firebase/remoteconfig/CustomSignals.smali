.class public Lcom/google/firebase/remoteconfig/CustomSignals;
.super Ljava/lang/Object;
.source "CustomSignals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/CustomSignals$Builder;
    }
.end annotation


# instance fields
.field final customSignals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/remoteconfig/CustomSignals$Builder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/CustomSignals$Builder;->access$000(Lcom/google/firebase/remoteconfig/CustomSignals$Builder;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/CustomSignals;->customSignals:Ljava/util/Map;

    return-void
.end method
