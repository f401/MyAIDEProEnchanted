.class Labcd/KM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private DW:Ljava/lang/Object;

.field private j6:Labcd/vL;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/vL;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Labcd/vL;-><init>([BZ)V

    iput-object v0, p0, Labcd/KM;->j6:Labcd/vL;

    invoke-direct {p0}, Labcd/KM;->j6()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Labcd/KM;->DW:Ljava/lang/Object;

    return-void
.end method

.method private j6()Ljava/lang/Object;
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/KM;->j6:Labcd/vL;

    invoke-virtual {v0}, Labcd/vL;->Hw()Labcd/EL;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "malformed DER construction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/DL;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/DL;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Labcd/KM;->DW:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Labcd/KM;->DW:Ljava/lang/Object;

    invoke-direct {p0}, Labcd/KM;->j6()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Labcd/KM;->DW:Ljava/lang/Object;

    return-object v0
.end method
