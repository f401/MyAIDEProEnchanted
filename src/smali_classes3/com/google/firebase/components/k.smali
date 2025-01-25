.class final synthetic Lcom/google/firebase/components/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/d;


# instance fields
.field private final j6:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/k;->j6:Ljava/lang/Object;

    return-void
.end method

.method public static j6(Ljava/lang/Object;)Lcom/google/firebase/components/d;
    .registers 2

    new-instance v0, Lcom/google/firebase/components/k;

    invoke-direct {v0, p0}, Lcom/google/firebase/components/k;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final j6(Lcom/google/firebase/components/c;)Ljava/lang/Object;
    .registers 2

    iget-object p1, p0, Lcom/google/firebase/components/k;->j6:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/components/b;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
