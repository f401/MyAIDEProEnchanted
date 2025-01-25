.class Labcd/EG$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/EG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final DW:I

.field final j6:[B


# direct methods
.method constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/EG$a;->j6:[B

    iput p2, p0, Labcd/EG$a;->DW:I

    return-void
.end method
