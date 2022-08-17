import { createStore } from 'redux'
import SideBarReducer from '../reducers/SideBarReducer';

const configureStore = (railsProps) => createStore(SideBarReducer, railsProps);

export default configureStore;