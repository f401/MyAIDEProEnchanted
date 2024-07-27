.class final Labcd/NF$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/NF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final DW:[Labcd/iG;

.field FH:I

.field Hw:I

.field j6:Labcd/NF$a;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Labcd/iG;

    iput-object v0, p0, Labcd/NF$a;->DW:[Labcd/iG;

    return-void
.end method


# virtual methods
.method DW()Z
    .registers 3

    iget v0, p0, Labcd/NF$a;->FH:I

    iget v1, p0, Labcd/NF$a;->Hw:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method FH()Z
    .registers 3

    iget v0, p0, Labcd/NF$a;->Hw:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method Hw()Labcd/iG;
    .registers 4

    iget-object v0, p0, Labcd/NF$a;->DW:[Labcd/iG;

    iget v1, p0, Labcd/NF$a;->FH:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/NF$a;->FH:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method j6()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/NF$a;->j6:Labcd/NF$a;

    iput v1, p0, Labcd/NF$a;->FH:I

    iput v1, p0, Labcd/NF$a;->Hw:I

    return-void
.end method

.method j6(Labcd/iG;)V
    .registers 5

    iget-object v0, p0, Labcd/NF$a;->DW:[Labcd/iG;

    iget v1, p0, Labcd/NF$a;->Hw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/NF$a;->Hw:I

    aput-object p1, v0, v1

    return-void
.end method
