.class Labcd/qP;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/hP;


# static fields
.field private static DW:Ljava/security/Permission;

.field private static FH:Ljava/security/Permission;

.field private static Hw:Ljava/security/Permission;

.field private static j6:Ljava/security/Permission;


# instance fields
.field private volatile VH:Ljavax/crypto/spec/DHParameterSpec;

.field private Zo:Ljava/lang/ThreadLocal;

.field private v5:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/iP;

    sget-object v1, Labcd/pP;->DW:Ljava/lang/String;

    const-string v2, "threadLocalEcImplicitlyCa"

    invoke-direct {v0, v1, v2}, Labcd/iP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Labcd/qP;->j6:Ljava/security/Permission;

    new-instance v0, Labcd/iP;

    sget-object v1, Labcd/pP;->DW:Ljava/lang/String;

    const-string v2, "ecImplicitlyCa"

    invoke-direct {v0, v1, v2}, Labcd/iP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Labcd/qP;->DW:Ljava/security/Permission;

    new-instance v0, Labcd/iP;

    sget-object v1, Labcd/pP;->DW:Ljava/lang/String;

    const-string v2, "threadLocalDhDefaultParams"

    invoke-direct {v0, v1, v2}, Labcd/iP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Labcd/qP;->FH:Ljava/security/Permission;

    new-instance v0, Labcd/iP;

    sget-object v1, Labcd/pP;->DW:Ljava/lang/String;

    const-string v2, "DhDefaultParams"

    invoke-direct {v0, v1, v2}, Labcd/iP;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Labcd/qP;->Hw:Ljava/security/Permission;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Labcd/qP;->v5:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Labcd/qP;->Zo:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public j6()Ljavax/crypto/spec/DHParameterSpec;
    .registers 2

    iget-object v0, p0, Labcd/qP;->Zo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    iget-object v0, p0, Labcd/qP;->VH:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method
