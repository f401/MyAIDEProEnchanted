.class public Lorg/dom4j/rule/NullAction;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/rule/Action;


# static fields
.field public static final SINGLETON:Lorg/dom4j/rule/NullAction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/dom4j/rule/NullAction;

    invoke-direct {v0}, Lorg/dom4j/rule/NullAction;-><init>()V

    sput-object v0, Lorg/dom4j/rule/NullAction;->SINGLETON:Lorg/dom4j/rule/NullAction;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/dom4j/Node;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
