.class public interface abstract Lcom/yahoo/memory/MemoryRequestServer;
.super Ljava/lang/Object;
.source "MemoryRequestServer.java"


# virtual methods
.method public abstract request(J)Lcom/yahoo/memory/WritableMemory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityBytes"
        }
    .end annotation
.end method

.method public abstract requestClose(Lcom/yahoo/memory/WritableMemory;Lcom/yahoo/memory/WritableMemory;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "memoryToClose",
            "newMemory"
        }
    .end annotation
.end method
