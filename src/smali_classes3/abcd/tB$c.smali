.class Labcd/tB$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field DW:Labcd/WD;

.field FH:[B

.field j6:Labcd/tB$a;


# direct methods
.method constructor <init>(Labcd/tB$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/tB$c;->j6:Labcd/tB$a;

    return-void
.end method
