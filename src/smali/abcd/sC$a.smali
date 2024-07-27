.class Labcd/sC$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/sC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/sC$a$a;,
        Labcd/sC$a$b;,
        Labcd/sC$a$c;
    }
.end annotation


# instance fields
.field DW:Labcd/sC$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LsC",
            "<TS;>.a.b;"
        }
    .end annotation
.end field

.field protected FH:I

.field protected Hw:I

.field protected VH:Labcd/jC;

.field protected Zo:I

.field final gn:Labcd/sC;

.field j6:Labcd/sC$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LsC",
            "<TS;>.a.b;"
        }
    .end annotation
.end field

.field protected v5:I


# direct methods
.method constructor <init>(Labcd/sC;)V
    .registers 3

    iput-object p1, p0, Labcd/sC$a;->gn:Labcd/sC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/sC$a$c;

    invoke-direct {v0, p0}, Labcd/sC$a$c;-><init>(Labcd/sC$a;)V

    iput-object v0, p0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    new-instance v0, Labcd/sC$a$a;

    invoke-direct {v0, p0}, Labcd/sC$a$a;-><init>(Labcd/sC$a;)V

    iput-object v0, p0, Labcd/sC$a;->DW:Labcd/sC$a$b;

    return-void
.end method

.method static synthetic j6(Labcd/sC$a;)Labcd/sC;
    .registers 2

    iget-object v0, p0, Labcd/sC$a;->gn:Labcd/sC;

    return-object v0
.end method


# virtual methods
.method DW(IIII)V
    .registers 7

    iput p1, p0, Labcd/sC$a;->FH:I

    iput p2, p0, Labcd/sC$a;->Hw:I

    iput p3, p0, Labcd/sC$a;->v5:I

    iput p4, p0, Labcd/sC$a;->Zo:I

    sub-int v0, p3, p1

    iget-object v1, p0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    invoke-virtual {v1, v0, p1}, Labcd/sC$a$b;->VH(II)I

    move-result v1

    iput v1, p0, Labcd/sC$a;->FH:I

    iget v1, p0, Labcd/sC$a;->FH:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/sC$a;->v5:I

    sub-int v0, p4, p2

    iget-object v1, p0, Labcd/sC$a;->DW:Labcd/sC$a$b;

    invoke-virtual {v1, v0, p2}, Labcd/sC$a$b;->VH(II)I

    move-result v1

    iput v1, p0, Labcd/sC$a;->Hw:I

    iget v1, p0, Labcd/sC$a;->Hw:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/sC$a;->Zo:I

    return-void
.end method

.method j6(IIII)Labcd/jC;
    .registers 9

    if-eq p1, p2, :cond_0

    if-ne p3, p4, :cond_1

    :cond_0
    new-instance v0, Labcd/jC;

    invoke-direct {v0, p1, p2, p3, p4}, Labcd/jC;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_1
    iput p1, p0, Labcd/sC$a;->FH:I

    iput p2, p0, Labcd/sC$a;->Hw:I

    iput p3, p0, Labcd/sC$a;->v5:I

    iput p4, p0, Labcd/sC$a;->Zo:I

    sub-int v0, p3, p2

    sub-int v1, p4, p1

    iget-object v2, p0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    sub-int v3, p3, p1

    invoke-virtual {v2, v3, p1, v0, v1}, Labcd/sC$a$b;->j6(IIII)V

    iget-object v2, p0, Labcd/sC$a;->DW:Labcd/sC$a$b;

    sub-int v3, p4, p2

    invoke-virtual {v2, v3, p2, v0, v1}, Labcd/sC$a$b;->j6(IIII)V

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    invoke-virtual {v1, v0}, Labcd/sC$a$b;->j6(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/sC$a;->DW:Labcd/sC$a$b;

    invoke-virtual {v1, v0}, Labcd/sC$a$b;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Labcd/sC$a;->VH:Labcd/jC;

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
