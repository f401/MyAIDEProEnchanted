.class Labcd/Ji$d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Ji$d$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public FH:J
    .annotation runtime Labcd/ru;
        field = 0x3058ce2bffdfc060L
    .end annotation
.end field

.field public Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x206467faced09b80L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x134215d64da507a3L
    .end annotation
.end field

.field public Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x22d19f615aa2ccd8L
    .end annotation
.end field

.field private gn:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x286e0098fbad9600L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/Ji$d$a;",
            ">;"
        }
    .end annotation
.end field

.field public v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1d1198a828c88585L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ji$d;

    const-wide v1, -0xd34f32dbe02f628L  # -9.234961700579405E244

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x275bd133115434b4L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ji$d;->j6:Z

    if-eqz v0, :cond_15

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x22fadb63ec660938L

    const/4 v3, 0x0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Ji$d;->gn:Ljava/util/Map;

    iput-wide p1, p0, Labcd/Ji$d;->FH:J

    iput-object p3, p0, Labcd/Ji$d;->Hw:Ljava/lang/String;

    iput-object p4, p0, Labcd/Ji$d;->v5:Ljava/lang/String;

    iput-object p5, p0, Labcd/Ji$d;->Zo:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Labcd/Ji$d;->VH:I
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Labcd/Ji$d;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x22fadb63ec660938L

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x16cefc2beb4134bL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x9a6fe543eb28cc5L

    :try_start_6
    sget-boolean v3, Labcd/Ji$d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Ji$d;->gn:Ljava/util/Map;

    iput-object p1, p0, Labcd/Ji$d;->v5:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".aidedropbox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_8a

    const/4 v5, 0x1

    if-ne v3, v5, :cond_82

    :try_start_40
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Labcd/Ji$d;->FH:J

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Labcd/Ji$d;->Hw:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Labcd/Ji$d;->Zo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_58
    if-ge v6, v3, :cond_73

    iget-object v7, p0, Labcd/Ji$d;->gn:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Labcd/Ji$d$a;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    invoke-direct {v9, v10, v11, v12}, Labcd/Ji$d$a;-><init>(Ljava/lang/String;J)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    :cond_73
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    iput v5, p0, Labcd/Ji$d;->VH:I
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_78} :catch_79
    .catchall {:try_start_40 .. :try_end_78} :catchall_8a

    return-void

    :catch_79
    move-exception v3

    :try_start_7a
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Broken AIDE dropbox sync info. Please download your folder again."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_82
    new-instance v3, Ljava/io/IOException;

    const-string v4, "This directory was downloaded with an older version. Please download your folder again."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8a
    .catchall {:try_start_7a .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v3

    sget-boolean v4, Labcd/Ji$d;->DW:Z

    if-eqz v4, :cond_92

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_92
    goto :goto_94

    :goto_93
    throw v3

    :goto_94
    goto :goto_93
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1b37c2a5742b5df8L
    .end annotation

    const-wide v0, 0x2644fe522f29e9bL

    :try_start_5
    sget-boolean v2, Labcd/Ji$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ji$d;->VH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Ji$d;->VH:I

    const/16 v3, 0x64

    if-le v2, v3, :cond_19

    invoke-virtual {p0}, Labcd/Ji$d;->j6()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Ji$d;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method private Hw(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3db967dbbf6840ccL
    .end annotation

    const-wide v0, -0x3178044c579651b1L  # -2.0690754096357563E70

    :try_start_5
    sget-boolean v2, Labcd/Ji$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji$d;->v5:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object p1

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Ji$d;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x30cd4ab6b0932b0cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ji$d;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1928ec578b9250fL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_2e

    if-eqz p1, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    :goto_2d
    return p1

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/Ji$d;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, 0x1928ec578b9250fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    throw v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2838453f765397c8L
    .end annotation

    const-wide v0, -0x44a57bc881b177bdL  # -8.773564541890945E-23

    :try_start_5
    sget-boolean v2, Labcd/Ji$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/Ji$d;->Zo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Ji$d;->v5:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-object p1

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Ji$d;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public FH(Ljava/lang/String;)Labcd/Ji$d$a;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5611875e870b451L
    .end annotation

    const-wide v0, 0x1d62d411e97ce08L

    :try_start_5
    sget-boolean v2, Labcd/Ji$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ji$d;->gn:Ljava/util/Map;

    invoke-direct {p0, p1}, Labcd/Ji$d;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Ji$d$a;
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v2

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Ji$d;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1197df6e5f0d185cL
    .end annotation

    const-wide v0, 0x5588699ee1f0a87L

    :try_start_5
    sget-boolean v2, Labcd/Ji$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ji$d;->VH:I

    if-nez v2, :cond_11

    return-void

    :cond_11
    const/4 v2, 0x0

    iput v2, p0, Labcd/Ji$d;->VH:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/Ji$d;->v5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".aidedropbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v4, p0, Labcd/Ji$d;->FH:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v2, p0, Labcd/Ji$d;->Hw:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Ji$d;->Zo:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Ji$d;->gn:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Labcd/Ji$d;->gn:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Ji$d$a;

    iget-object v5, v5, Labcd/Ji$d$a;->FH:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Ji$d$a;

    iget-wide v4, v4, Labcd/Ji$d$a;->Hw:J

    invoke-virtual {v3, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_5c

    :cond_88
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_8b
    .catchall {:try_start_5 .. :try_end_8b} :catchall_8c

    return-void

    :catchall_8c
    move-exception v2

    sget-boolean v3, Labcd/Ji$d;->DW:Z

    if-eqz v3, :cond_94

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_94
    goto :goto_96

    :goto_95
    throw v2

    :goto_96
    goto :goto_95
.end method

.method public j6(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x3090c1fa679b5c8L
    .end annotation

    const-wide v0, 0x30b99599a8defbL

    :try_start_5
    sget-boolean v2, Labcd/Ji$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Labcd/Ji$d;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Labcd/Ji$d;->gn:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Labcd/Ji$d;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_35
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Labcd/Ji$d;->gn:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_4b
    invoke-direct {p0}, Labcd/Ji$d;->DW()V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4f

    return-void

    :catchall_4f
    move-exception v2

    sget-boolean v3, Labcd/Ji$d;->DW:Z

    if-eqz v3, :cond_57

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    goto :goto_59

    :goto_58
    throw v2

    :goto_59
    goto :goto_58
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0xad75aca036e757L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ji$d;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0x6f391026ab3e5cL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Labcd/Ji$d;->gn:Ljava/util/Map;

    invoke-direct {p0, p1}, Labcd/Ji$d;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Labcd/Ji$d$a;

    invoke-direct {v2, p2, p3, p4}, Labcd/Ji$d$a;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Labcd/Ji$d;->DW()V
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Ji$d;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x6f391026ab3e5cL

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p3, p4}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method
