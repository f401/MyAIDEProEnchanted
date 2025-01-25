.class Labcd/Ly$a;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final DW:Labcd/Ly;

.field j6:I


# direct methods
.method constructor <init>(Labcd/Ly;I)V
    .registers 3

    iput-object p1, p0, Labcd/Ly$a;->DW:Labcd/Ly;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p2, p0, Labcd/Ly$a;->j6:I

    return-void
.end method
