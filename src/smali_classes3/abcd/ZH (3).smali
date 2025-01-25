.class Labcd/ZH;
.super Labcd/RK$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/_H;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/LE;Ljava/lang/String;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final EQ:Ljava/lang/String;

.field private final VH:Ljava/lang/String;

.field final Zo:Labcd/_H;

.field private final gn:Ljava/lang/String;

.field private final tp:Labcd/LE;

.field private final u7:Ljava/security/MessageDigest;


# direct methods
.method constructor <init>(Labcd/_H;Ljava/lang/String;Ljava/lang/String;Ljava/security/MessageDigest;Labcd/LE;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Labcd/ZH;->Zo:Labcd/_H;

    iput-object p2, p0, Labcd/ZH;->VH:Ljava/lang/String;

    iput-object p3, p0, Labcd/ZH;->gn:Ljava/lang/String;

    iput-object p4, p0, Labcd/ZH;->u7:Ljava/security/MessageDigest;

    iput-object p5, p0, Labcd/ZH;->tp:Labcd/LE;

    iput-object p6, p0, Labcd/ZH;->EQ:Ljava/lang/String;

    invoke-direct {p0}, Labcd/RK$d;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 8

    invoke-super {p0}, Labcd/RK;->close()V

    :try_start_3
    iget-object v0, p0, Labcd/ZH;->Zo:Labcd/_H;

    iget-object v1, p0, Labcd/ZH;->VH:Ljava/lang/String;

    iget-object v2, p0, Labcd/ZH;->gn:Ljava/lang/String;

    iget-object v3, p0, Labcd/ZH;->u7:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    iget-object v5, p0, Labcd/ZH;->tp:Labcd/LE;

    iget-object v6, p0, Labcd/ZH;->EQ:Ljava/lang/String;

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Labcd/_H;->j6(Labcd/_H;Ljava/lang/String;Ljava/lang/String;[BLabcd/RK;Labcd/LE;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-virtual {p0}, Labcd/RK$d;->j6()V

    return-void

    :catchall_1b
    move-exception v0

    invoke-virtual {p0}, Labcd/RK$d;->j6()V

    throw v0
.end method
