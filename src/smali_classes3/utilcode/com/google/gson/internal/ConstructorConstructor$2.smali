.class Lutilcode/com/google/gson/internal/ConstructorConstructor$2;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutilcode/com/google/gson/internal/ConstructorConstructor;->get(Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/internal/ObjectConstructor;
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

.field final val$rawTypeCreator:Lutilcode/com/google/gson/InstanceCreator;

.field final val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Lutilcode/com/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .registers 4

    iput-object p1, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$2;->this$0:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lutilcode/com/google/gson/InstanceCreator;

    iput-object p3, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lutilcode/com/google/gson/InstanceCreator;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lutilcode/com/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
