.class Lorg/dom4j/rule/RuleManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/dom4j/rule/Action;


# instance fields
.field private final this$0:Lorg/dom4j/rule/RuleManager;

.field private final val$mode:Lorg/dom4j/rule/Mode;


# direct methods
.method constructor <init>(Lorg/dom4j/rule/RuleManager;Lorg/dom4j/rule/Mode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/rule/RuleManager$1;->this$0:Lorg/dom4j/rule/RuleManager;

    iput-object p2, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    return-void
.end method


# virtual methods
.method public run(Lorg/dom4j/Node;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->applyTemplates(Lorg/dom4j/Element;)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    instance-of v0, p1, Lorg/dom4j/Document;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->applyTemplates(Lorg/dom4j/Document;)V

    goto :goto_b
.end method
