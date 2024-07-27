.class public Labcd/bq$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final DW:[I

.field final FH:[I

.field final Hw:I

.field final j6:I


# direct methods
.method public constructor <init>(I[I[II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/bq$a;->j6:I

    iput-object p2, p0, Labcd/bq$a;->DW:[I

    iput-object p3, p0, Labcd/bq$a;->FH:[I

    iput p4, p0, Labcd/bq$a;->Hw:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/bq$a;->Hw:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/bq$a;->j6:I

    return v0
.end method

.method public Hw()[I
    .registers 2

    iget-object v0, p0, Labcd/bq$a;->DW:[I

    return-object v0
.end method

.method public j6()[I
    .registers 2

    iget-object v0, p0, Labcd/bq$a;->FH:[I

    return-object v0
.end method
