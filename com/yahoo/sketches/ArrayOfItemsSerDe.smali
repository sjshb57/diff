.class public abstract Lcom/yahoo/sketches/ArrayOfItemsSerDe;
.super Ljava/lang/Object;
.source "ArrayOfItemsSerDe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deserializeFromMemory(Lcom/yahoo/memory/Memory;I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mem",
            "numItems"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yahoo/memory/Memory;",
            "I)[TT;"
        }
    .end annotation
.end method

.method public abstract serializeToByteArray([Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[B"
        }
    .end annotation
.end method
