.class Lcom/a/b/a/b/ah;
.super Ljava/lang/Object;


# instance fields
.field c:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/a/b/a/b/ah;->c:I

    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    iget v0, p0, Lcom/a/b/a/b/ah;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/a/b/a/b/ah;->c:I

    return v0
.end method
