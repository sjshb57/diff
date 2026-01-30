.class public Lcom/unity3d/player/PlatformSupport;
.super Ljava/lang/Object;


# static fields
.field public static final MARSHMALLOW_SUPPORT:Z

.field public static final NOUGAT_SUPPORT:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/PlatformSupport;->MARSHMALLOW_SUPPORT:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/unity3d/player/PlatformSupport;->NOUGAT_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
