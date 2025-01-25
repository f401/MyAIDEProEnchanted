.class Labcd/hj;
.super Labcd/BaseProjectConfig;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/hj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LSi<",
        "Labcd/hj;",
        ">;"
    }
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public EQ:Z
    .annotation runtime Labcd/ru;
        field = 0x591b04678b8a3480L
    .end annotation
.end field

.field public gn:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x4f470fc74e872cf0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/hj$a;",
            ">;"
        }
    .end annotation
.end field

.field public tp:Ljava/lang/Integer;
    .annotation runtime Labcd/ru;
        field = -0x222b2ddcfbc824f0L
    .end annotation
.end field

.field public u7:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x25764f1188cb1000L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/hj$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/hj;

    const-wide v1, -0x13d543d24d302300L  # -1.125040909234382E213

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2d01366642c5c138L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x14a6d875fb3c19f5L  # 3.47451863308015E-209

    :try_start_6
    sget-boolean v3, Labcd/hj;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/hj;->VH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x555f5c410113390L
    .end annotation

    const-wide v0, 0x2d0f7a4e4446bca7L  # 1.2072441405379066E-91

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/hj;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/BaseProjectConfig;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/hj;->gn:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/hj;->u7:Ljava/util/List;

    const/4 v3, 0x0

    iput-boolean v3, p0, Labcd/hj;->EQ:Z

    iput-object v2, p0, Labcd/hj;->tp:Ljava/lang/Integer;
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_b8

    :try_start_23
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_2d
    :goto_2d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_af

    invoke-static {v5}, Labcd/hj;->FH(Ljava/lang/String;)Labcd/hj$a;

    move-result-object v6

    if-eqz v6, :cond_3f

    iget-object v5, p0, Labcd/hj;->gn:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_3f
    const-string v6, "source.dir="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_58} :catch_b3
    .catchall {:try_start_23 .. :try_end_58} :catchall_b8

    const/4 v7, 0x0

    :goto_59
    if-ge v7, v6, :cond_2d

    aget-object v8, v5, v7

    :try_start_5d
    iget-object v9, p0, Labcd/hj;->u7:Ljava/util/List;

    new-instance v10, Labcd/hj$a;

    invoke-direct {v10, v8, v3}, Labcd/hj$a;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    :cond_6a
    const-string v6, "target="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Google Inc.:Google APIs:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8d

    const/4 v6, 0x1

    iput-boolean v6, p0, Labcd/hj;->EQ:Z

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_9f

    :cond_8d
    const-string v6, "android-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9e

    iput-boolean v3, p0, Labcd/hj;->EQ:Z

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_9d} :catch_b3
    .catchall {:try_start_5d .. :try_end_9d} :catchall_b8

    goto :goto_9f

    :cond_9e
    move-object v5, v2

    :goto_9f
    if-eqz v5, :cond_2d

    :try_start_a1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Labcd/hj;->tp:Ljava/lang/Integer;
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_ab} :catch_ac
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_ab} :catch_b3
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_b8

    goto :goto_2d

    :catch_ac
    move-exception v5

    goto/16 :goto_2d

    :cond_af
    :try_start_af
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3
    .catchall {:try_start_af .. :try_end_b2} :catchall_b8

    goto :goto_b7

    :catch_b3
    move-exception v3

    :try_start_b4
    invoke-static {v3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    :goto_b7
    return-void

    :catchall_b8
    move-exception v3

    sget-boolean v4, Labcd/hj;->VH:Z

    if-eqz v4, :cond_c0

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c0
    goto :goto_c2

    :goto_c1
    throw v3

    :goto_c2
    goto :goto_c1
.end method

.method public static DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1ebedb9700c2a2a3L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/hj;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x8aba760b5a9f027L  # -6.560532183217895E266

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_63

    :cond_10
    :try_start_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-static {v2}, Labcd/hj;->FH(Ljava/lang/String;)Labcd/hj$a;

    move-result-object v3

    if-eqz v3, :cond_35

    invoke-virtual {v3, p1}, Labcd/hj$a;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_35
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_45

    :cond_5a
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_5d} :catch_5e
    .catchall {:try_start_10 .. :try_end_5d} :catchall_63

    goto :goto_62

    :catch_5e
    move-exception v0

    :try_start_5f
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    :goto_62
    return-void

    :catchall_63
    move-exception v0

    sget-boolean v1, Labcd/hj;->VH:Z

    if-eqz v1, :cond_75

    const-wide v2, -0x8aba760b5a9f027L  # -6.560532183217895E266

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    goto :goto_77

    :goto_76
    throw v0

    :goto_77
    goto :goto_76
.end method

.method private static FH(Ljava/lang/String;)Labcd/hj$a;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2c4d6b375bfa364bL
    .end annotation

    const-wide v0, 0x22f1f584502e0993L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/hj;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "android.library.reference."

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_31

    new-instance v4, Labcd/hj$a;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v5}, Labcd/hj$a;-><init>(Ljava/lang/String;Z)V
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_32

    return-object v4

    :cond_31
    return-object v2

    :catchall_32
    move-exception v3

    sget-boolean v4, Labcd/hj;->VH:Z

    if-eqz v4, :cond_3a

    invoke-static {v3, v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v3
.end method

.method public static j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x389238b6111e17c0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/hj;->Zo:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x45d9a45e2be1f484L  # -1.4109842604385636E-28

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_3c

    :cond_10
    :try_start_10
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.library.reference.1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Labcd/FileSystemUtils;->gn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_36} :catch_37
    .catchall {:try_start_10 .. :try_end_36} :catchall_3c

    goto :goto_3b

    :catch_37
    move-exception v0

    :try_start_38
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    :goto_3b
    return-void

    :catchall_3c
    move-exception v0

    sget-boolean v1, Labcd/hj;->VH:Z

    if-eqz v1, :cond_4e

    const-wide v2, -0x45d9a45e2be1f484L  # -1.4109842604385636E-28

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method


# virtual methods
.method protected DW(Ljava/lang/String;)Labcd/hj;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x26ed519b7ccc5bL
    .end annotation

    const-wide v0, -0x65df96861096ea0fL  # -7.72493074088737E-183

    :try_start_5
    sget-boolean v2, Labcd/hj;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/hj;

    invoke-direct {v2, p1}, Labcd/hj;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/hj;->VH:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method protected bridge synthetic newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/hj;->DW(Ljava/lang/String;)Labcd/hj;

    move-result-object p1

    return-object p1
.end method
