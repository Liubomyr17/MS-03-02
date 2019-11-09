package mvc.MUSIC_STORE.daoimpl;

import mvc.MUSIC_STORE.dao.CategoryDAO;
import mvc.MUSIC_STORE.dto.Category;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

    private static List<Category> categories = new ArrayList<Category>();

    static {
        Category category = new Category();

        // adding first category
        category.setId(1);
        category.setName("Television");
        category.setDescription("This is some description for television");
        category.setImageURL("CAT_1.png");

        categories.add(category);

        // adding second category
        category = new Category();
        category.setId(2);
        category.setName("Mobile");
        category.setDescription("This is some description for mobile");
        category.setImageURL("CAT_2.png");

        categories.add(category);

        // adding third category
        category = new Category();
        category.setId(3);
        category.setName("Laptop");
        category.setDescription("This is some description for laptop");
        category.setImageURL("CAT_3.png");

        categories.add(category);
    }

    public List<Category> list() {
        return categories;
}
}
