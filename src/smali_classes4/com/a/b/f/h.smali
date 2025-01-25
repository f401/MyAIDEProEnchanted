.class public Lcom/a/b/f/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/a/b/g/o;

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/f/h;->b:I

    return-void
.end method
