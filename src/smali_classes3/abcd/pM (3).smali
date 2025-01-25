.class public Labcd/pM;
.super Labcd/AL;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/AL;-><init>([B)V

    return-void
.end method


# virtual methods
.method Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method j6(Labcd/CL;)V
    .registers 4

    const/4 v0, 0x4

    iget-object v1, p0, Labcd/AL;->j6:[B

    invoke-virtual {p1, v0, v1}, Labcd/CL;->j6(I[B)V

    return-void
.end method

.method v5()I
    .registers 3

    iget-object v0, p0, Labcd/AL;->j6:[B

    array-length v0, v0

    invoke-static {v0}, Labcd/OM;->j6(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/AL;->j6:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
