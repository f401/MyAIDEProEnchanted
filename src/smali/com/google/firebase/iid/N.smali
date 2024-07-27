.class final synthetic Lcom/google/firebase/iid/N;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Ux;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljava/lang/String;

.field private final Hw:Labcd/Zx;

.field private final j6:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final v5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/N;->j6:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/N;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/N;->FH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/iid/N;->Hw:Labcd/Zx;

    iput-object p5, p0, Lcom/google/firebase/iid/N;->v5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j6(Labcd/Yx;)V
    .registers 8

    iget-object v0, p0, Lcom/google/firebase/iid/N;->j6:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/N;->DW:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/N;->FH:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/iid/N;->Hw:Labcd/Zx;

    iget-object v4, p0, Lcom/google/firebase/iid/N;->v5:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Ljava/lang/String;Ljava/lang/String;Labcd/Zx;Ljava/lang/String;Labcd/Yx;)V

    return-void
.end method
