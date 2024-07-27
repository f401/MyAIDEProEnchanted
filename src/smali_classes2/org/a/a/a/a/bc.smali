.class public final Lorg/a/a/a/a/bc;
.super Lorg/a/a/a/a/bl;


# instance fields
.field public final a:I

.field public final b:I

.field public c:Lorg/a/a/a/a/n;


# direct methods
.method public constructor <init>(Lorg/a/a/a/a/ba;IILorg/a/a/a/a/n;)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/a/a/a/a/bl;-><init>(Lorg/a/a/a/a/n;)V

    iput p2, p0, Lorg/a/a/a/a/bc;->a:I

    iput p3, p0, Lorg/a/a/a/a/bc;->b:I

    iput-object p4, p0, Lorg/a/a/a/a/bc;->c:Lorg/a/a/a/a/n;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public a(III)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
