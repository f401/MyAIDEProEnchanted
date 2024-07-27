.class public La/b/a/j;
.super La/b/a/m;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, La/b/a/m;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, La/b/a/m;-><init>(II)V

    iput-object p3, p0, La/b/a/j;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, La/b/a/j;->a:Ljava/lang/String;

    return-object v0
.end method
