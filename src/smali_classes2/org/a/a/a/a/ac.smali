.class public Lorg/a/a/a/a/ac;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:Lorg/a/a/a/b/d;


# direct methods
.method protected constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/a/a/a/a/ac;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/a/ac;->b:I

    iput v1, p0, Lorg/a/a/a/a/ac;->c:I

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    const/4 v1, -0x1

    iput v1, p0, Lorg/a/a/a/a/ac;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/a/a/a/a/ac;->b:I

    iput v1, p0, Lorg/a/a/a/a/ac;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/a/a/ac;->d:Lorg/a/a/a/b/d;

    return-void
.end method
