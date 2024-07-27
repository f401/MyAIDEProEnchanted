.class abstract Labcd/MM;
.super Ljava/io/InputStream;


# instance fields
.field private DW:I

.field protected final j6:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    iput p2, p0, Labcd/MM;->DW:I

    return-void
.end method


# virtual methods
.method j6()I
    .registers 2

    iget v0, p0, Labcd/MM;->DW:I

    return v0
.end method

.method protected j6(Z)V
    .registers 4

    iget-object v0, p0, Labcd/MM;->j6:Ljava/io/InputStream;

    instance-of v1, v0, Labcd/JM;

    if-eqz v1, :cond_0

    check-cast v0, Labcd/JM;

    invoke-virtual {v0, p1}, Labcd/JM;->DW(Z)V

    :cond_0
    return-void
.end method
