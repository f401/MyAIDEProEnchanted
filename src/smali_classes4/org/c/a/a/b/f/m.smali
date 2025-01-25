.class public Lorg/c/a/a/b/f/m;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/f/p;


# static fields
.field public static final a:Lorg/c/a/a/b/f/m;

.field public static final b:Lorg/c/a/a/b/f/m;

.field public static final c:Lorg/c/a/a/b/f/m;

.field public static final d:Lorg/c/a/a/b/f/m;


# instance fields
.field protected e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/c/a/a/b/f/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/m;-><init>(I)V

    sput-object v0, Lorg/c/a/a/b/f/m;->a:Lorg/c/a/a/b/f/m;

    new-instance v0, Lorg/c/a/a/b/f/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/m;-><init>(I)V

    sput-object v0, Lorg/c/a/a/b/f/m;->b:Lorg/c/a/a/b/f/m;

    new-instance v0, Lorg/c/a/a/b/f/m;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/m;-><init>(I)V

    sput-object v0, Lorg/c/a/a/b/f/m;->c:Lorg/c/a/a/b/f/m;

    new-instance v0, Lorg/c/a/a/b/f/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/c/a/a/b/f/m;-><init>(I)V

    sput-object v0, Lorg/c/a/a/b/f/m;->d:Lorg/c/a/a/b/f/m;

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/c/a/a/b/f/m;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/f/m;->e:I

    return v0
.end method

.method public a(Lorg/c/a/a/b/f/q;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/f/q;->a(Lorg/c/a/a/b/f/m;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StartMarkerToken{\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/c/a/a/b/f/m;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
