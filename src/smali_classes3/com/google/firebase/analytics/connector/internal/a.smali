.class final synthetic Lcom/google/firebase/analytics/connector/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/d;


# static fields
.field static final j6:Lcom/google/firebase/components/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/analytics/connector/internal/a;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/internal/a;-><init>()V

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->j6:Lcom/google/firebase/components/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/firebase/components/c;)Ljava/lang/Object;
    .registers 5

    const-class v0, Lcom/google/firebase/FirebaseApp;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/c;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/FirebaseApp;

    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/c;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Labcd/zy;

    invoke-interface {p1, v2}, Lcom/google/firebase/components/c;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/zy;

    invoke-static {v0, v1, p1}, Labcd/ty;->j6(Lcom/google/firebase/FirebaseApp;Landroid/content/Context;Labcd/zy;)Labcd/sy;

    move-result-object p1

    return-object p1
.end method
