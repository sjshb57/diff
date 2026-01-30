.class public Lcom/yahoo/sketches/SketchesArgumentException;
.super Lcom/yahoo/sketches/SketchesException;
.source "SketchesArgumentException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lcom/yahoo/sketches/SketchesException;-><init>(Ljava/lang/String;)V

    return-void
.end method
