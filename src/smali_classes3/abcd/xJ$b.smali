.class Labcd/xJ$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/xJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final DW:Z

.field final j6:I


# direct methods
.method constructor <init>(Labcd/gE;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "postbuffer"

    const/high16 v1, 0x100000

    const-string v2, "http"

    invoke-virtual {p1, v2, v0, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Labcd/xJ$b;->j6:I

    const-string v0, "sslVerify"

    const/4 v1, 0x1

    invoke-virtual {p1, v2, v0, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Labcd/xJ$b;->DW:Z

    return-void
.end method
