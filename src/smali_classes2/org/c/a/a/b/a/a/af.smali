.class public Lorg/c/a/a/b/a/a/af;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/c/a/a/b/a/a/af;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/c/a/a/b/a/a/af;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/c/a/a/b/a/a/af;->c:Ljava/lang/String;

    iput p4, p0, Lorg/c/a/a/b/a/a/af;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/af;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/b/a/a/af;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/c/a/a/b/a/a/af;->d:I

    return v0
.end method
