.class public Lorg/a/a/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/a/ab;


# static fields
.field public static final a:Lorg/a/a/a/ab;


# instance fields
.field protected final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/a/a/a/m;

    invoke-direct {v0}, Lorg/a/a/a/m;-><init>()V

    sput-object v0, Lorg/a/a/a/m;->a:Lorg/a/a/a/ab;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/a/a/a/m;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/a/a/a/m;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/a/c/m;ILjava/lang/String;IIIII)Lorg/a/a/a/l;
    .registers 15

    new-instance v0, Lorg/a/a/a/l;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/a/a/a/l;-><init>(Lorg/a/a/a/c/m;IIII)V

    invoke-virtual {v0, p7}, Lorg/a/a/a/l;->a(I)V

    invoke-virtual {v0, p8}, Lorg/a/a/a/l;->b(I)V

    if-eqz p3, :cond_16

    invoke-virtual {v0, p3}, Lorg/a/a/a/l;->a(Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-object v0

    :cond_16
    iget-boolean v1, p0, Lorg/a/a/a/m;->b:Z

    if-eqz v1, :cond_15

    iget-object v1, p1, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    if-eqz v1, :cond_15

    iget-object v1, p1, Lorg/a/a/a/c/m;->b:Ljava/lang/Object;

    check-cast v1, Lorg/a/a/a/c;

    invoke-static {p5, p6}, Lorg/a/a/a/c/h;->a(II)Lorg/a/a/a/c/h;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/a/a/a/c;->a(Lorg/a/a/a/c/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/a/a/a/l;->a(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public synthetic b(Lorg/a/a/a/c/m;ILjava/lang/String;IIIII)Lorg/a/a/a/aa;
    .registers 10

    invoke-virtual/range {p0 .. p8}, Lorg/a/a/a/m;->a(Lorg/a/a/a/c/m;ILjava/lang/String;IIIII)Lorg/a/a/a/l;

    move-result-object v0

    return-object v0
.end method
