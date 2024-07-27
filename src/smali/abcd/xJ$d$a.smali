.class Labcd/xJ$d$a;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/xJ$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final j6:Labcd/xJ$d;


# direct methods
.method constructor <init>(Labcd/xJ$d;)V
    .registers 2

    iput-object p1, p0, Labcd/xJ$d$a;->j6:Labcd/xJ$d;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    iget-object v0, p0, Labcd/xJ$d$a;->j6:Labcd/xJ$d;

    invoke-virtual {v0}, Labcd/xJ$d;->j6()V

    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Labcd/xJ$d$a;->j6:Labcd/xJ$d;

    invoke-virtual {v0}, Labcd/xJ$d;->j6()V

    const/4 v0, -0x1

    return v0
.end method

.method public skip(J)J
    .registers 5

    iget-object v0, p0, Labcd/xJ$d$a;->j6:Labcd/xJ$d;

    invoke-virtual {v0}, Labcd/xJ$d;->j6()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method
