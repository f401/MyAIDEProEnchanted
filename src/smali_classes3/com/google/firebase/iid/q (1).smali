.class final synthetic Lcom/google/firebase/iid/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/d;


# static fields
.field static final j6:Lcom/google/firebase/components/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/iid/q;

    invoke-direct {v0}, Lcom/google/firebase/iid/q;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/q;->j6:Lcom/google/firebase/components/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/firebase/components/c;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/google/firebase/iid/Registrar$a;

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-interface {p1, v1}, Lcom/google/firebase/components/c;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {v0, p1}, Lcom/google/firebase/iid/Registrar$a;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId;)V

    return-object v0
.end method
