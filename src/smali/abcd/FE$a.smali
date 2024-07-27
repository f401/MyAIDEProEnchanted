.class public Labcd/FE$a;
.super Labcd/FE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/FE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:[B

.field private final j6:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Labcd/FE;-><init>()V

    iput p1, p0, Labcd/FE$a;->j6:I

    iput-object p2, p0, Labcd/FE$a;->DW:[B

    return-void
.end method


# virtual methods
.method public DW()J
    .registers 3

    invoke-virtual {p0}, Labcd/FE$a;->j6()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/FE$a;->j6:I

    return v0
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6()[B
    .registers 2

    iget-object v0, p0, Labcd/FE$a;->DW:[B

    return-object v0
.end method

.method public v5()Labcd/JE;
    .registers 2

    new-instance v0, Labcd/JE$b;

    invoke-direct {v0, p0}, Labcd/JE$b;-><init>(Labcd/FE;)V

    return-object v0
.end method
