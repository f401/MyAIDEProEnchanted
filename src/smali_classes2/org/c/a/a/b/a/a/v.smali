.class public Lorg/c/a/a/b/a/a/v;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:[I


# direct methods
.method public constructor <init>(I[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/a/a/v;->a:I

    iput-object p2, p0, Lorg/c/a/a/b/a/a/v;->b:[I

    return-void
.end method


# virtual methods
.method public a()[I
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/v;->b:[I

    return-object v0
.end method
