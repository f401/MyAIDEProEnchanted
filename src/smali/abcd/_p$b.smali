.class public Labcd/_p$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/_p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final DW:I

.field private FH:I

.field private final j6:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/_p$b;->j6:I

    iput p2, p0, Labcd/_p$b;->DW:I

    iput p3, p0, Labcd/_p$b;->FH:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/_p$b;->FH:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/_p$b;->j6:I

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/_p$b;->DW:I

    return v0
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Labcd/_p$b;->FH:I

    return-void
.end method
