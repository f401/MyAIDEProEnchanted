.class public Lcom/aide/uidesigner/N$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/uidesigner/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field public EQ:Z

.field public FH:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public Hw:Ljava/lang/String;

.field public VH:Lcom/aide/uidesigner/N$b;

.field public Zo:Ljava/lang/String;

.field public gn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public tp:Ljava/lang/String;

.field public u7:Ljava/lang/String;

.field public v5:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private we:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x27cceb69b6e0953bL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/N$a;

    const-wide v1, -0xfe22d5057d4d8c7L  # -1.1575183976684858E232

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/N$a;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, -0x45216a5f77f31e3bL  # -3.952951489719822E-25

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/aide/uidesigner/N$a;->j6(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    iput-object v0, p0, Lcom/aide/uidesigner/N$a;->FH:Ljava/lang/Class;

    iput-object p3, p0, Lcom/aide/uidesigner/N$a;->Hw:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    iput-object p4, p0, Lcom/aide/uidesigner/N$a;->VH:Lcom/aide/uidesigner/N$b;

    const-string v0, "layout_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aide/uidesigner/N$a;->EQ:Z

    invoke-direct {p0}, Lcom/aide/uidesigner/N$a;->DW()V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/N$a;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, -0x45216a5f77f31e3bL  # -3.952951489719822E-25

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    sget-boolean v0, Lcom/aide/uidesigner/N$a;->j6:Z

    if-eqz v0, :cond_22

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, -0x4439be20460f447L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    invoke-direct {p0, p5}, Lcom/aide/uidesigner/N$a;->j6(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/aide/uidesigner/N$a;->gn:Ljava/lang/Class;

    iput-object p5, p0, Lcom/aide/uidesigner/N$a;->u7:Ljava/lang/String;

    iput-object p6, p0, Lcom/aide/uidesigner/N$a;->tp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/N$a;->j6:Z

    if-eqz v0, :cond_12

    const-wide v1, 0x9b03e5267a959ebL  # 5.15848201335148E-262

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    invoke-direct {p0, p3}, Lcom/aide/uidesigner/N$a;->j6(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/N$a;->DW:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x9b03e5267a959ebL  # 5.15848201335148E-262

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    sget-boolean v0, Lcom/aide/uidesigner/N$a;->j6:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const-wide v1, -0x231bc98d17957e21L  # -3.008791846021257E139

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_25
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/aide/uidesigner/N$a;->j6(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/aide/uidesigner/N$a;->v5:Ljava/lang/Class;

    return-void
.end method

.method private DW()V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x42617ae36c424540L
    .end annotation

    const-wide v0, 0x1a7c02ee2a90e7c0L  # 4.219083855083028E-181

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/N$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/N$a;->Zo:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_57

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz v7, :cond_3d

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_5e

    const/4 v7, 0x0

    goto :goto_54

    :cond_3d
    const/16 v9, 0x5f

    const-string v10, " "

    if-ne v8, v9, :cond_48

    :try_start_43
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x1

    goto :goto_54

    :cond_48
    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v9

    if-eqz v9, :cond_51

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_51
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_57
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/uidesigner/N$a;->we:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_43 .. :try_end_5d} :catchall_5e

    return-void

    :catchall_5e
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/N$a;->DW:Z

    if-eqz v3, :cond_66

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_66
    goto :goto_68

    :goto_67
    throw v2

    :goto_68
    goto :goto_67
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x1256760faab18797L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "."

    const-wide v1, 0x26f6098e166181a7L  # 5.333847752075937E-121

    :try_start_7
    sget-boolean v3, Lcom/aide/uidesigner/N$a;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_3d

    :cond_e
    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/aide/uidesigner/N;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_35
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_39} :catch_3a
    .catchall {:try_start_e .. :try_end_39} :catchall_3d

    return-object p1

    :catch_3a
    move-exception p1

    const/4 p1, 0x0

    return-object p1

    :catchall_3d
    move-exception v0

    sget-boolean v3, Lcom/aide/uidesigner/N$a;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v0
.end method


# virtual methods
.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x37f26ee637b63f8L  # -5.25402621942736E291

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/N$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/uidesigner/N$a;->we:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/N$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
