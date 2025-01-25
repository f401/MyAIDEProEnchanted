.class Lutilcode/com/google/gson/internal/ConstructorConstructor$9;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutilcode/com/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lutilcode/com/google/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lutilcode/com/google/gson/internal/ObjectConstructor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final this$0:Lutilcode/com/google/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;)V
    .registers 2

    iput-object p1, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$9;->this$0:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    return-object v0
.end method
