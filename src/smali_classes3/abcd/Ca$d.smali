.class Labcd/Ca$d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
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
.field public FH:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0x108ce3c5a98e506dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Labcd/Ca$a;",
            ">;"
        }
    .end annotation
.end field

.field public Hw:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = -0x48c27e45a8e06f88L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Labcd/Ca$a;",
            ">;"
        }
    .end annotation
.end field

.field final v5:Labcd/Ca;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ca$d;

    const-wide v1, 0x25c51ed06d742204L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ca;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3f0f2c4a150b84f0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x5f7954521621a17L

    :try_start_6
    sget-boolean v3, Labcd/Ca$d;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Ca$d;->v5:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Ca$d;->DW:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public constructor <init>(Labcd/Ca;Labcd/ec;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3490c6c5aeec7cc0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ca$d;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x2b2b0023932d7b7fL  # 9.644150003927976E-101

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Labcd/Ca$d;->v5:Labcd/Ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v0, :cond_2e

    iget-object v3, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    new-instance v4, Labcd/Ca$a;

    invoke-direct {v4, p1, p2}, Labcd/Ca$a;-><init>(Labcd/Ca;Labcd/ec;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2e
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    :goto_39
    if-ge v1, v0, :cond_48

    iget-object v2, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    new-instance v3, Labcd/Ca$a;

    invoke-direct {v3, p1, p2}, Labcd/Ca$a;-><init>(Labcd/Ca;Labcd/ec;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_49

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_48
    return-void

    :catchall_49
    move-exception v0

    sget-boolean v1, Labcd/Ca$d;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, 0x2b2b0023932d7b7fL  # 9.644150003927976E-101

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method


# virtual methods
.method protected j6(Labcd/fc;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3def3705209eb168L
    .end annotation

    const-wide v0, 0x49b94040de39b16fL  # 1.4415766776897432E47

    :try_start_5
    sget-boolean v2, Labcd/Ca$d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_17
    iget-object v4, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    iget-object v4, p0, Labcd/Ca$d;->FH:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Ca$a;

    invoke-virtual {v4, p1}, Labcd/Ca$a;->j6(Labcd/fc;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2d
    iget-object v3, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_36
    iget-object v3, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    iget-object v3, p0, Labcd/Ca$d;->Hw:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Ca$a;

    invoke-virtual {v3, p1}, Labcd/Ca$a;->j6(Labcd/fc;)V
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4d

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_4c
    return-void

    :catchall_4d
    move-exception v2

    sget-boolean v3, Labcd/Ca$d;->DW:Z

    if-eqz v3, :cond_55

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    goto :goto_57

    :goto_56
    throw v2

    :goto_57
    goto :goto_56
.end method
