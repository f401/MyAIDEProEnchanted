.class Labcd/ot$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final DW:I

.field public final FH:I

.field public j6:Labcd/bs;


# direct methods
.method public constructor <init>(Labcd/bs;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/ot$a;->j6:Labcd/bs;

    iput p2, p0, Labcd/ot$a;->DW:I

    iput p3, p0, Labcd/ot$a;->FH:I

    return-void
.end method
