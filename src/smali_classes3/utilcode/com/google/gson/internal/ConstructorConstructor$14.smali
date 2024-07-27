.class Lutilcode/com/google/gson/internal/ConstructorConstructor$14;
.super Ljava/lang/Object;

# interfaces
.implements Lutilcode/com/google/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutilcode/com/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lutilcode/com/google/gson/internal/ObjectConstructor;
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

.field private final unsafeAllocator:Lutilcode/com/google/gson/internal/UnsafeAllocator;

.field final val$rawType:Ljava/lang/Class;

.field final val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 5

    iput-object p1, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$14;->this$0:Lutilcode/com/google/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    iput-object p3, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lutilcode/com/google/gson/internal/UnsafeAllocator;->create()Lutilcode/com/google/gson/internal/UnsafeAllocator;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$14;->unsafeAllocator:Lutilcode/com/google/gson/internal/UnsafeAllocator;

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$14;->unsafeAllocator:Lutilcode/com/google/gson/internal/UnsafeAllocator;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$14;->val$rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lutilcode/com/google/gson/internal/UnsafeAllocator;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to invoke no-args constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/ConstructorConstructor$14;->val$type:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Registering an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
