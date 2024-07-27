.class public Labcd/qM;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/BL;


# instance fields
.field private j6:Labcd/HM;


# direct methods
.method constructor <init>(Labcd/HM;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/qM;->j6:Labcd/HM;

    return-void
.end method


# virtual methods
.method public DW()Labcd/EL;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Labcd/qM;->j6()Labcd/EL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/DL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/DL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public FH()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Labcd/qM;->j6:Labcd/HM;

    return-object v0
.end method

.method public j6()Labcd/EL;
    .registers 3

    new-instance v0, Labcd/pM;

    iget-object v1, p0, Labcd/qM;->j6:Labcd/HM;

    invoke-virtual {v1}, Labcd/HM;->DW()[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/pM;-><init>([B)V

    return-object v0
.end method
