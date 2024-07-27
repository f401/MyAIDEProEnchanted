.class public Lorg/c/a/a/b/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/f/p;


# static fields
.field public static final a:Lorg/c/a/a/b/f/h;


# instance fields
.field protected b:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/c/a/a/b/f/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/h;-><init>(I)V

    sput-object v0, Lorg/c/a/a/b/f/h;->a:Lorg/c/a/a/b/f/h;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/f/h;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/f/h;->b:I

    return v0
.end method

.method public a(Lorg/c/a/a/b/f/q;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/f/q;->a(Lorg/c/a/a/b/f/h;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LineNumberToken{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/c/a/a/b/f/h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
