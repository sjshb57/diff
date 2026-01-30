.class final Lcom/yahoo/memory/DefaultMemoryManager;
.super Ljava/lang/Object;
.source "DefaultMemoryManager.java"

# interfaces
.implements Lcom/yahoo/memory/MemoryRequestServer;


# static fields
.field private static final memMgr:Lcom/yahoo/memory/DefaultMemoryManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/yahoo/memory/DefaultMemoryManager;

    invoke-direct {v0}, Lcom/yahoo/memory/DefaultMemoryManager;-><init>()V

    sput-object v0, Lcom/yahoo/memory/DefaultMemoryManager;->memMgr:Lcom/yahoo/memory/DefaultMemoryManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/yahoo/memory/DefaultMemoryManager;
    .registers 1

    sget-object v0, Lcom/yahoo/memory/DefaultMemoryManager;->memMgr:Lcom/yahoo/memory/DefaultMemoryManager;

    return-object v0
.end method


# virtual methods
.method public request(J)Lcom/yahoo/memory/WritableMemory;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "capacityBytes"
        }
    .end annotation

    long-to-int p1, p1

    invoke-static {p1}, Lcom/yahoo/memory/WritableMemory;->allocate(I)Lcom/yahoo/memory/WritableMemory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yahoo/memory/WritableMemory;->setMemoryRequest(Lcom/yahoo/memory/MemoryRequestServer;)V

    return-object p1
.end method

.method public requestClose(Lcom/yahoo/memory/WritableMemory;Lcom/yahoo/memory/WritableMemory;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "memoryToClose",
            "newMemory"
        }
    .end annotation

    return-void
.end method
