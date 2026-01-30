.class public abstract Lcom/google/firebase/remoteconfig/ConfigUpdate;
.super Ljava/lang/Object;
.source "ConfigUpdate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/Set;)Lcom/google/firebase/remoteconfig/ConfigUpdate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/remoteconfig/ConfigUpdate;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/remoteconfig/AutoValue_ConfigUpdate;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/AutoValue_ConfigUpdate;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public abstract getUpdatedKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
