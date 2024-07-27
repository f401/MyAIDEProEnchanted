.class Labcd/Ca$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field final EQ:Labcd/Ca;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public final FH:I
    .annotation runtime Labcd/ru;
        field = 0x3640c76fe1d9d07L
    .end annotation
.end field

.field public final Hw:I
    .annotation runtime Labcd/ru;
        field = -0x3238fffbc4aa229bL
    .end annotation
.end field

.field public final VH:I
    .annotation runtime Labcd/ru;
        field = 0x165795dced3b000L
    .end annotation
.end field

.field public final Zo:I
    .annotation runtime Labcd/ru;
        field = 0x9d80547c3a60f39L
    .end annotation
.end field

.field public final gn:I
    .annotation runtime Labcd/ru;
        field = -0x1e3469f2d2bb8d30L
    .end annotation
.end field

.field public tp:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0x2160128158ede898L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Labcd/Ca$c;",
            ">;"
        }
    .end annotation
.end field

.field public final u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x8a18ce3f448a16cL
    .end annotation
.end field

.field public final v5:I
    .annotation runtime Labcd/ru;
        field = 0x847a5e624292b41L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xc9a3db88a0cc2d0L    # -7.606825313117041E247

    const-class v0, Labcd/Ca$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ca;IIIILjava/lang/String;II)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x2a614692ca59ff68L
    .end annotation

    sget-boolean v0, Labcd/Ca$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3a0fbf517846dc58L    # 5.0088465820556787E-29

    const/4 v2, 0x0

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Ca$a;->EQ:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p7, p0, Labcd/Ca$a;->FH:I

    iput p8, p0, Labcd/Ca$a;->Hw:I

    iput p2, p0, Labcd/Ca$a;->v5:I

    iput p3, p0, Labcd/Ca$a;->Zo:I

    iput p4, p0, Labcd/Ca$a;->VH:I

    iput p5, p0, Labcd/Ca$a;->gn:I

    iput-object p6, p0, Labcd/Ca$a;->u7:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Labcd/Ca;Labcd/ec;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x614bf56fb5d5c710L
    .end annotation

    const-wide v2, -0x21ee4a0624e21010L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ca$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x21ee4a0624e21010L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Ca$a;->EQ:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ca$a;->FH:I

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ca$a;->Hw:I

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ca$a;->v5:I

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ca$a;->Zo:I

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ca$a;->VH:I

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ca$a;->gn:I

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Ca$a;->u7:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Labcd/Ca$a;->tp:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v5, p0, Labcd/Ca$a;->tp:Ljava/util/Vector;

    new-instance v6, Labcd/Ca$c;

    invoke-direct {v6, p1, p2}, Labcd/Ca$c;-><init>(Labcd/Ca;Labcd/ec;)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ca$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method


# virtual methods
.method protected j6(Labcd/fc;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2126c2b720cb9400L
    .end annotation

    const-wide v4, -0x40fd7dfa6c5a9ce8L    # -3.5301013172789146E-5

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ca$a;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x40fd7dfa6c5a9ce8L    # -3.5301013172789146E-5

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Ca$a;->FH:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Ca$a;->Hw:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Ca$a;->v5:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Ca$a;->Zo:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Ca$a;->VH:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Ca$a;->gn:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Labcd/Ca$a;->u7:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/Ca$a;->tp:Ljava/util/Vector;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Labcd/Ca$a;->tp:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_0
    iget-object v0, p0, Labcd/Ca$a;->tp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Labcd/Ca$a;->tp:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Ca$c;

    invoke-virtual {v0, p1}, Labcd/Ca$c;->j6(Labcd/fc;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ca$a;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
