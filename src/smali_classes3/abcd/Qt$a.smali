.class Labcd/Qt$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private DW:I

.field private final FH:Ljava/lang/String;

.field private final j6:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/Qt$a;->j6:I

    iput p2, p0, Labcd/Qt$a;->DW:I

    iput-object p3, p0, Labcd/Qt$a;->FH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0, p2}, Labcd/Qt$a;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/Qt$a;->j6:I

    return v0
.end method

.method public DW(I)V
    .registers 4

    iget v0, p0, Labcd/Qt$a;->DW:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    iput p1, p0, Labcd/Qt$a;->DW:I

    :cond_9
    return-void
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Qt$a;->FH:Ljava/lang/String;

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Qt$a;->DW:I

    return v0
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Labcd/Qt$a;->DW:I

    return-void
.end method
