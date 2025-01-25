.class Labcd/Gy$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field DW:I

.field FH:I

.field Hw:I

.field j6:I

.field v5:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/Gy$a;->j6:I

    iput p2, p0, Labcd/Gy$a;->DW:I

    iput p3, p0, Labcd/Gy$a;->FH:I

    iput p4, p0, Labcd/Gy$a;->Hw:I

    iput p5, p0, Labcd/Gy$a;->v5:I

    return-void
.end method
